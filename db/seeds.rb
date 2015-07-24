Article.create!([
  {title: "hello", text: "again"},
  {title: "this is", text: "new"},
  {title: "oneone", text: "ertyuiop"},
  {title: "numbers", text: "dbnmnbvcxcv"},
  {title: "sdfgh", text: "fgb"},
  {title: "ertyuio", text: "sdfgtjul"},
  {title: "xsfghj", text: "dsfyuh"}
])
Comment.create!([
  {commenter: "this is me", body: "hello", article_id: 3},
  {commenter: "werty", body: "dgjhy", article_id: 3},
  {commenter: "45", body: "sdfgh", article_id: 3},
  {commenter: "this is me", body: "hello", article_id: 3},
  {commenter: "wseg", body: "su", article_id: 7},
  {commenter: "hello", body: "making new", article_id: 3},
  {commenter: "editted", body: "commentless", article_id: 3},
  {commenter: "sdfgrth", body: "qu", article_id: 16}
])
