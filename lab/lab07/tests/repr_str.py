test = {
  'name': 'repr_str',
  'points': 0,
  'suites': [
    {
      'cases': [
        {
          'code': r"""
          >>> print("hi")
          hi
          >>> "hi"
          'hi'
          >>> print(repr("hi"))
          'hi'
          >>> repr("hi")
          "'hi'"
          """,
          'hidden': False,
          'locked': False
        },
        {
          'code': r"""
          >>> class A:
          ...     def __init__(self, x):
          ...         self.x = x
          ...     def __repr__(self):
          ...         return self.x
          >>> class B(A):
          ...     def __str__(self):
          ...         return self.x + self.x
          >>> A("hi")
          hi
          >>> print(A("hi"))
          hi
          >>> B("hi")
          hi
          >>> print(B("hi"))
          hihi
          """,
          'hidden': False,
          'locked': False
        },
        {
          'code': r"""
          >>> class C:
          ...     def __str__(self):
          ...         print('hi')
          ...         return 'hihi'
          ...     def __repr__(self):
          ...         print('hihihi')
          ...         return 'hihihihi'
          >>> C()
          hihihi
          hihihihi
          >>> print(C())
          hi
          hihi
          >>> q = str(C())
          hi
          >>> q
          'hihi'
          >>> r = repr(C())
          hihihi
          >>> r
          'hihihihi'
          """,
          'hidden': False,
          'locked': False
        }
      ],
      'scored': False,
      'type': 'wwpp'
    }
  ]
}
