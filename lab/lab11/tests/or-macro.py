test = {
  'name': 'or-macro',
  'points': 0,
  'suites': [
    {
      'cases': [
        {
          'code': r"""
          scm> (or-macro #t #f)
          #t
          scm> (or-macro #f #t)
          #t
          scm> (or-macro 0 #f)
          0
          """,
          'hidden': False,
          'locked': False
        },
        {
          'code': r"""
          scm> (or-macro (/ 1 0) #t)
          c6d536c5acab2b28e563f34c64535296
          # locked
          """,
          'hidden': False,
          'locked': True
        },
        {
          'code': r"""
          scm> (or-macro #t (/ 1 0))
          811dacf2a8c491d71193b389f2e6d3ab
          # locked
          """,
          'hidden': False,
          'locked': True
        },
        {
          'code': r"""
          scm> (or-macro #f (/ 1 0))
          c6d536c5acab2b28e563f34c64535296
          # locked
          """,
          'hidden': False,
          'locked': True
        },
        {
          'code': r"""
          scm> (or-macro (print 'hi) (print 'bye))
          hi
          scm> (or-macro (begin (print 'hi) #f) (print 'bye))
          hi
          bye
          """,
          'hidden': False,
          'locked': False
        }
      ],
      'scored': False,
      'setup': r"""
      scm> (load 'lab11)
      """,
      'teardown': '',
      'type': 'scheme'
    }
  ]
}
