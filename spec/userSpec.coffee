describe "User", ->
  describe "#profile", ->
    it "profile is valid format", ->
      user = new User("Tanaka World", 25)
      expect(user.profile()).toEqual("Tanaka World : 25")
