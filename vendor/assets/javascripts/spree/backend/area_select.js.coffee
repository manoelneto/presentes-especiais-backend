changeAreaSelection = (img, selection) ->
  ['x1', 'y1', 'x2', 'y2'].forEach (item) ->
    $(img).parent().find(".#{item}").val(selection[item])

makeAreaSelection = (el, options) ->
  options ||= {}
  # aspectRatio: "1:1",
  $.extend options, { handles: true, onSelectChange: changeAreaSelection, instance: true }
  el.data 'ia', el.imgAreaSelect(options)

getCurrentSelectionFor = ($bg) ->
  options = {}

  ['x1', 'y1', 'x2', 'y2'].forEach (item) ->
    val = $bg.parent().find(".#{item}").val()
    if val
      options[item] = parseInt val

  options

runForBg = (bg) ->
  options = {}

  $bg = $(bg)

  ['x1', 'y1', 'x2', 'y2'].forEach (item) ->

    $bg.parent().find(".#{item}").on 'keyup', (e) ->
      opt = getCurrentSelectionFor $bg
      opt[item] = this.value

      $bg.data('ia').setSelection opt.x1, opt.y1, opt.x2, opt.y2
      $bg.data('ia').update()

  makeAreaSelection($bg, getCurrentSelectionFor($bg))

$ ->
  $('.background').each ->
    runForBg(this)

  $('.newRecordCreatedRow').on 'newRecordCreated', (e, el) ->
    runForBg($(el).find('.background'))

  $('.newRecordCreatedRow').on 'recordDestroyed', (e, el) ->
    console.log 'record destroyed'
    runForBg($(el).find('.background').data('ia').cancelSelection())


setTimeout ->
  $(window).trigger('resize')
, 1000


setTimeout ->
  $(window).trigger('resize')
, 6000
