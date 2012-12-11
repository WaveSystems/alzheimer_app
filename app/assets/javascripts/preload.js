var AA = {
  Models: {},
  Collections: {},
  Views: {},
  Templates: {},

  Initialize: function(){
    AA.router = new AA.Router();
    Backbone.history.start({pushState: true});
  }
};
