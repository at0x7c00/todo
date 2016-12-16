var app = new Vue({
  el: '#app',
  data: {
    title:'Add a Task.',
    newTask : '',
    todos: [
     
    ],
  },
  methods : {
	add(){
		if(!this.newTask){
			return;
		}
		this.todos.push({id:this.getNextId(),text:this.newTask,active:false,complate:false});
		this.newTask = '';
	},
	hover(e){
		var id = $(e.target).attr("id");
		for(var i = 0;i<this.todos.length;i++){
			this.todos[i].active = false;
		}
		this.findById(id).active = true;
	},
	normal(e){
		var id = $(e.target).attr("id");
		this.findById(id).active = false;
	},
	submit(){
		this.add();
	},
	dbclick(e){
		var id = $(e.target).attr("id");
		var todo = this.findById(id);
		todo.complate = !todo.complate;
	},
	findById(id){
		for(var i = 0;i<this.todos.length;i++){
			if(this.todos[i].id==id){
				return this.todos[i];
			}
		}
		return null;
	},
	getNextId(){
		var id = 0;
		for(var i = 0;i<this.todos.length;i++){
			if(this.todos[i].id>id){
				id = this.todos[i].id;
			}
		}
		return id + 1;
	}
	
  },
  computed:{
	  unComplateds(){
		  return this.todos.filter(task=>!task.complate);
	  },
	  complateds(){
		  return this.todos.filter(task=>task.complate);
	  }
  }
});