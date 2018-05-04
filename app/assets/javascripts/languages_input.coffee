class MonsterMash.LanguagesInput
  constructor: ->
    $(document).ready @initListeners

  initListeners: =>
    $('.js-languages-input').autocomplete
      minLength: 0
      source: "/languages/autocomplete"
      select: @onLanguageSelect

  onLanguageSelect: (ev, ui) =>
    $language = $($('.js-language-fields-template').clone().html())
    $language.find('input').val(ui.item.id)
    $language.find('.name').html(ui.item.label)
    $('.js-languages').append($language)
    $(ev.target).val('')
    return false
