test = {
  'name': 'obedience',
  'points': 1,
  'suites': [
    {
      'cases': [
        {
          'code': r"""
          sqlite> SELECT * FROM obedience LIMIT 10;
          7|9 (Jacqueline Tiffany Yeung)
          the number 7 below.|7 (Kevin Yu)
          7|3 (Tim Foster)
          7|5 (Chae Park)
          seven|4 (Chae Park)
          7|2 (Rachel De Jaen)
          Choose this option instead|7 (Kevin Yu)
          the number 7 below.|7 (Kevin Yu)
          7|5 (Chae Park)
          the number 7 below.|4 (Chae Park)
          """,
          'hidden': False,
          'locked': False
        }
      ],
      'ordered': False,
      'scored': True,
      'setup': r"""
      sqlite> .read lab12.sql
      """,
      'teardown': '',
      'type': 'sqlite'
    }
  ]
}
