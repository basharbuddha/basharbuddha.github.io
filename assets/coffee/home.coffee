#==========================================
# Component
#==========================================
Vue.component 'todo-item',
  props: [ 'todo' ]
  template: '<li>{{ todo.text }}</li>'


#==========================================
# App
#==========================================
app = new Vue(
  delimiters: ['{!', '!}']
  el: '#app'
  data:
    message: 'hello fucker<hr />'
    title: 'You are mother fucker'
    description: 'You are mother fucker'
    link: 'https://google.com'
    visible: true
    todos: [
      { text: 'Learn JavaScript gg' }
      { text: 'Learn Vue' }
      { text: 'Build something awesome' }
    ]
  computed:
    reversedDescription: ->
      @description.split('').reverse().join('')
  methods:
    reverseString: ->
      @description = @description.split('').reverse().join('')
    rock: ->
      alert 'rock!'
  created: ->
    xx 'App created.'
  mounted: ->
    xx 'App mounted.'
  updated: ->
    xx 'App updated.'
)
