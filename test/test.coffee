Serializer = require("..")

describe "Test that the JSON Serializer...", ->
    serializer = null

    beforeEach ->
        serializer = new Serializer()

    it "implements the correct methods", ->
        serializer.should.respondTo("serialize")
        serializer.should.respondTo("deserialize")

    it "implements the correct properties", ->
        serializer.should.have.property("name")

    it "is named correctly", ->
        serializer.should.have.property("name")
        serializer.name.should.equal("JSONSerializer")

    it "serialize(deserialize(x)) == x", ->
        x = true
        serializer.deserialize(serializer.serialize(x)).should.equal(x)
        x = "123"
        serializer.deserialize(serializer.serialize(x)).should.equal(x)
        x = 123
        serializer.deserialize(serializer.serialize(x)).should.equal(x)
