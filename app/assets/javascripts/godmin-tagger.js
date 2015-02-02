window.Godmin = window.Godmin || {};

Godmin.Tagger = (function() {
  function initialize() {
    initializeState();
  }

  function initializeState() {
    initializeTagger($('[data-behavior~=tagger]'));
  }

  function initializeTagger($el, options) {
    options = {
      delimiter: ', ',
      create: true,
      valueField: 'name',
      labelField: 'name',
      searchField: 'name',
      load: function(query, callback) {
        if (!query.length) return callback();
        callback(
          $el.data('collection').map(function(tag) {
            return { name: tag };
          })
        );
      }
    };
    Godmin.SelectBoxes.initializeSelectBox($el, options);
  }

  return {
    initialize: initialize,
    initializeTagger: initializeTagger
  };
})();

$(function() {
  Godmin.Tagger.initialize();
});
