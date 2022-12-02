# Useful Objects with ruby

An object must be useful immediately upon instantiation of the object. No dependencies of an object should ever be allowed to be uninitialized. If any use of any of an object's dependencies results in a nil reference exception, then the object is not useful.

## A useful object:

- Is usable immediately upon initialization without any nil reference errors resulting from uninitialized dependencies (eg: NoMethodError, undefined method for nil:NilClass)
- Doesn't have any logic in its initializer other than assigning the value of initializer parameters to the object's instance variables
- Formalizes the difference between initializer arguments and setters, and the circumstances when one is used rather than the other
- Doesn't require a foreign mechanism outside of the class's own namespace (including inner namespaces) to initialize it and its dependencies (a.k.a.: an Inversion of Control container, etc)
- Doesn't invite the passing nils or dummy values to its initializer for the purposes of setting up the object for testing
- Doesn't rely on test doubles (stubs) to disengage dependencies that would cause undesirable side effects while exercising or otherwise testing it
- Doesn't rely on test doubles (mocks, spies) to be used to inspect an object's execution path
