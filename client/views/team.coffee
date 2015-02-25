Template.team.helpers
  editing: -> Session.get('editing') == @_id

Template.team.events
  "click .edit": (event, tpl) ->
    event.preventDefault()
    Session.set('editing', @_id)

  "submit form.form-edit": (event, tpl) ->
    event.preventDefault()
    teamName = tpl.$("input[name='name']").val()
    if teamName.length
      Teams.update(@_id, $set: {name: teamName})
      Session.set('editing', null)

  "click .cancel": (event, tpl) ->
    event.preventDefault()
    Session.set('editing', null)

  "click .remove": (event, tpl) ->
    event.preventDefault()
    Teams.remove(@_id)