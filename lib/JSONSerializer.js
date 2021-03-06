"use strict";

module.exports = function JSONSerializer() {
    var that = this;

    Object.defineProperty(that, "name", {
        value: "JSONSerializer",
        enumerable: true
    });

    that.serialize = function (value) {
        return JSON.stringify(value);
    };

    that.deserialize = function (value) {
        return value ? JSON.parse(value) : null;
    };
};
