<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
	<link href="./css/app.css" rel="stylesheet" type="text/css" media="screen"/>
	<body>
		<div id="app">
		  <input type="text" id="value" v-model="newTask" v-on:keyup.13="submit"/>
		  <button id="add" @click="add" :title="title" >添加</button>
		  <h1>待处理</h1>
		  <ol>
		    <li v-for="(todo,index) in unComplateds" :id="todo.id"  @dblclick="dbclick" @mouseover="hover" @mouseout="normal" :class="{'active':todo.active}">
		      {{ todo.text }}
		    </li>
		  </ol>
		  <h1>已完成</h1>
		  <ol>
		  	<li v-for="(todo,index) in complateds"   :id="todo.id" class="complated" @dblclick="dbclick">
		  	  {{ todo.text }}
		  	</li>
		  </ol>
		</div>
	</body>
	<script src="./js/vue.js"></script>
	<script src="./js/jquery-3.1.1.min.js"></script>
	<script src="./js/app.js"></script>
</html>
