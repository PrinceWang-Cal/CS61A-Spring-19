test = {
  'name': 'matchmaker',
  'points': 1,
  'suites': [
    {
      'cases': [
        {
          'code': r"""
          sqlite> SELECT * FROM matchmaker LIMIT 10;
          wolf|Never gonna give you up|red|blue
          dragon|All Star|greem|purple
          rabbit|All I want for Christmas|pink|pink
          cat|Never gonna give you up|something dark|blue
          cat|Never gonna give you up|something dark|artisan color
          cat|All I want for Christmas|pink|blue
          cat|All I want for Christmas|pink|maroon
          cat|All I want for Christmas|pink|black
          cat|All I want for Christmas|pink|blue
          cat|All I want for Christmas|pink|red
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
