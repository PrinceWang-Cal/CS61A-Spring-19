test = {
  'name': 'lets-count',
  'points': 0,
  'suites': [
    {
      'cases': [
        {
          'code': r"""
          sqlite> SELECT * from sp19favpets;
          cat|19
          dog|19
          panda|7
          dragon|6
          hedgehog|4
          dolphin|3
          elephant|3
          lion|3
          red panda|3
          baby elephant|2
          sqlite> SELECT * from sp19dog;
          dog|19
          sqlite> SELECT * from sp19alldogs;
          dog|24
          sqlite> SELECT * from obedienceimages;
          7|1 (Karthik Bharathala)|13
          7|2 (Rachel De Jaen)|3
          7|3 (Tim Foster)|6
          7|4 (Chae Park)|16
          7|5 (Chae Park)|10
          7|6 (Rachel De Jaen catsits)|5
          7|7 (Kevin Yu)|7
          7|8 (Jade Singh)|1
          7|9 (Jacqueline Tiffany Yeung)|3
          """,
          'hidden': False,
          'locked': False
        }
      ],
      'ordered': False,
      'scored': True,
      'setup': r"""
      sqlite> .read lab12_extra.sql
      """,
      'teardown': '',
      'type': 'sqlite'
    }
  ]
}
