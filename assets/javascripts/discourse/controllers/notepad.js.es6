export default Ember.Controller.extend({
    actions: {
      createNote(content) {
        if (!content) {
          return;
        }
  
        const noteRecord = this.store.createRecord('note', {
          id: Date.now(),
          content: content
        });
  
        noteRecord.save()
          .then(console.log)
          .catch(console.error);
      }
    }
  });