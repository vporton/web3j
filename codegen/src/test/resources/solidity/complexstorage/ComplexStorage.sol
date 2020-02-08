//in order for experimental ABIEncoderV2 to be “stable” when passing structs as arguments we must
//use at least version 0.4.19 of solidity
pragma solidity ^0.4.19;
pragma experimental ABIEncoderV2;

contract ComplexStorage {

    struct Foo {
        string id;
        string name;
    }

    struct Bar {
        string id;
        uint data;
    }

    Foo foo;
    Bar bar;

    function ComplexStorage(Foo _foo, Bar _bar) {
        foo = _foo;
        bar = _bar;
    }

    function setFoo(Foo _toSet) {
        foo = _toSet;
    }

    function setBar(Bar _toSet) {
        bar = _toSet;
    }

    function getFooBar() constant returns (Foo _foo, Bar _bar) {
        return (foo, bar);
    }
}
