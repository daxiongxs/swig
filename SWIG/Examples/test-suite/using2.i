%module using2

%inline %{

namespace X {
  typedef int Integer;

  class _FooImpl {
  public:
      typedef Integer value_type;
  };
  typedef _FooImpl Foo;
}

namespace Y = X;
using Y::Foo;

int spam(Foo::value_type x) { return x; }

%}
