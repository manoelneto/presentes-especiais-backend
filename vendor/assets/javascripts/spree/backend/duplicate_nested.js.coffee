
$ ->
  if $('.duplicatable_nested_form').length
    nestedForm = $('.duplicatable_nested_form').last().clone()

    $nestedFormParent = $('.duplicatable_nested_form').parent()

    # $(".destroy_duplicate_nested_form:first").remove()

    $nestedFormParent.on 'click', '.destroy_duplicate_nested_form', (e) ->

      if $(this).hasClass('javascript')
        e.preventDefault()
        e.stopPropagation()

      if confirm('Tem certeza?')
        $nestedFormParent.trigger('recordDestroyed', $(this).parents('.duplicatable_nested_form'))
        $(this).parents('.duplicatable_nested_form').remove()
      else
        e.preventDefault()
        e.stopPropagation()


    $('.duplicatable_nested_form').last().remove()

    $('.duplicate_nested_form').click (e) ->
      e.preventDefault()

      lastNestedForm = $('.duplicatable_nested_form').last()
      newNestedForm  = $(nestedForm).clone()
      formsOnPage    = $('.duplicatable_nested_form').length

      $(newNestedForm).find('label').each ->
        oldLabel = $(this).attr 'for'
        newLabel = oldLabel.replace(new RegExp(/_[0-9]+_/), "_#{formsOnPage}_")
        $(this).attr 'for', newLabel

      $(newNestedForm).find('select, input').each ->
        if this.hasAttribute('id')
          oldId = $(this).attr 'id'
          newId = oldId.replace(new RegExp(/_[0-9]+_/), "_#{formsOnPage}_")
          $(this).attr 'id', newId

        oldName = $(this).attr 'name'
        newName = oldName.replace(new RegExp(/\[[0-9]+\]/), "[#{formsOnPage}]")
        $(this).attr 'name', newName

      $(newNestedForm).find('.destroy_duplicate_nested_form').addClass('javascript')

      $nestedFormParent.append( newNestedForm )

      $nestedFormParent.trigger('newRecordCreated', newNestedForm)
