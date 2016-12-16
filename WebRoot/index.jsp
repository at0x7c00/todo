<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
	<script src="./js/vue.js"></script>
	<script src="./js/jquery-3.1.1.min.js"></script>
	<link href="./css/app.css" rel="stylesheet" type="text/css" media="screen"/>
	<body>
<div id="app">
  <input type="text" id="value" v-model="newTask" v-on:keyup.13="submit"/>
  <button id="add" @click="add" :title="title" >添加</button>
  <ol>
    <li v-for="(todo,index) in todos" @mouseover="hover(index)" @mouseout="normal(index)" :class="{'active':todo.active}">
      {{ todo.text }}
    </li>
  </ol>
</div>
<script type="text/javascript">
var app = new Vue({
  el: '#app',
  data: {
    title:'Add a Task.',
    newTask : '',
    todos: [
      { text: 'Learn JavaScript',active:false },
      { text: 'Learn Vue',active:false },
      { text: 'Build something awesome',active:false }
    ],
  },
  methods : {
	add(){
		if(!this.newTask){
			return;
		}
		this.todos.push({text:this.newTask,active:false});
		this.newTask = '';
	},
	hover(index){
		for(var i = 0;i<this.todos.length;i++){
			this.todos[i].active = false;
		}
		this.todos[index].active = true;
	},
	normal(index){
		this.todos[index].active = false;
	},
	submit(){
		this.add();
	}
  }
});
</script>
</body>
</html>
