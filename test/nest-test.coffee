chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'nest', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()

    require('../src/nest')(@robot)

  it 'registers a hear listener for nest status', ->
    expect(@robot.respond).to.have.been.calledWith(/nest status/i)

  it 'registers a hear listener for nest temp', ->
    expect(@robot.respond).to.have.been.calledWith(/nest temp/i)
