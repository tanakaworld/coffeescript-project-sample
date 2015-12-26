(function() {
  var User;

  User = (function() {
    var _toAge, _uid;

    _uid = 987654321;

    function User(NAME, age) {
      this.NAME = NAME;
      this.age = age;
    }

    User.prototype.profile = function() {
      return this.NAME + " : " + this.age;
    };

    _toAge = function() {
      return this.age++;
    };

    return User;

  })();

}).call(this);
