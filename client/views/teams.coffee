Template.teams.helpers
  teams: -> Teams.find()
  creating: -> Session.get 'creating'

Template.teams.events
  "click .create": (event, tpl) ->
    event.preventDefault()
    Session.set 'creating', true

  "submit form.form-create": (event, tpl) ->
    event.preventDefault()
    team = { name: tpl.$("input[name='name']" ).val() }
    if team.name.length > 0
      Teams.insert team
      Session.set 'creating', false

  "click .cancel": (event, tpl) ->
    event.preventDefault()
    Session.set 'creating', false