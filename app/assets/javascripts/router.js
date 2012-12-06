AA.Router = Backbone.Router.extend({
  routes: {
    "exercises" : "exercises"
  },

  exercises: function(){
    this.exercises = new AA.Views.exercises();
  }

});

