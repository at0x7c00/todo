<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
	<script src="https://unpkg.com/vue/dist/vue.js"></script>
	<style type="text/css">
	li{
		border:1px solid #ddd;
	}
	</style>
	<script src="jquery-3.1.1.min.js"></script>
	<body>
<div id="app">
  <ol>
    <li v-for="todo in todos">
      {{ todo.text }}
    </li>
  </ol>
  <input type="text" id="value" v-model="newTask"/>
  <button id="add" @click="add" :title="title">添加</button>
</div>
<script type="text/javascript">
var app = new Vue({
  el: '#app',
  data: {
    title:'Add a Task.',
    newTask : 'abbb',
    todos: [
      { text: 'Learn JavaScript' },
      { text: 'Learn Vue' },
      { text: 'Build something awesome' }
    ]
  },
  methods : {
	add(){
		this.todos.push({text:this.newTask});
		this.newTask = '';
	}
  }
});
</script>
</body>
</html>
