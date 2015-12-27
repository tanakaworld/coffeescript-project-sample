describe 'E2E', ->
  beforeEach ->
    browser.ignoreSynchronization = true
    browser.driver.get('http://localhost:9000/spec/e2e/e2e-template.html')

  describe 'Verify', ->
    it 'should have title', ->
      expect(browser.driver.getTitle()).toEqual('E2E template')
