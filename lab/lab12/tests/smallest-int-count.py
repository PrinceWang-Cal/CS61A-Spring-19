test = {
  'name': 'smallest-int-count',
  'points': 0,
  'suites': [
    {
      'cases': [
        {
          'code': r"""
          sqlite> SELECT * FROM smallest_int_count LIMIT 50;
          1|60
          2|9
          3|6
          4|6
          5|1
          6|3
          7|3
          8|1
          9|4
          10|1
          11|5
          12|1
          13|3
          14|4
          15|3
          17|2
          19|4
          21|1
          22|3
          23|4
          29|2
          30|1
          31|3
          32|1
          34|3
          37|4
          39|1
          41|2
          42|1
          45|1
          46|1
          50|1
          53|1
          55|2
          58|1
          68|1
          75|1
          87|1
          97|1
          100|1
          101|1
          325|1
          643|1
          739|1
          1000|1
          10101|1
          9999999|1
          10000000|1
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
