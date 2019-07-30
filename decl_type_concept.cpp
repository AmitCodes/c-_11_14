// C++14
//decltype(auto)

// returns prvalue: plain auto never deduces to a reference
template < typename T >
auto foo(T& t) {
	return t.value();
}

// return lvalue: auto& always deduces to a reference
template < typename T >
auto& bar(T& t) {
	return t.value();
}

// return prvalue if t.value() is an rvalue
// return lvalue if t.value is an lvalue
// decltype(auto) has decltype semantics (without having to repeat the expression).
template < typename T >
decltype(auto) foobar(T& t) { // auto is taken from the value t.value and then the actual datatype is replaced as return type
	return t.value();
}

int main_decl14()
{
	struct A {
		int i = 0;
		int& value() { return i; }
	} a;

	struct B {
		int i = 0;
		int value() { return i; }
	} b;

	//foo(a) = 20; // *** error: expression evaluates to prvalue of type int
	foo(b); // fine: expression evaluates to prvalue of type int

	bar(a) = 20; // fine: expression evaluates to lvalue of type int
	//bar(b); // *** error: auto& always deduces to a reference

	foobar(a) = 20; // fine: expression evaluates to lvalue of type int
	foobar(b); // fine: expression evaluates to prvalue of type int

	return 0;
}
