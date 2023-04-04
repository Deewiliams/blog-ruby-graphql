users = User.create([
    {
        first_name: "John",
        last_name: "Banda",
        address: "chelston palm drive",
        postcode: '10101',
        city: 'lusaka',
        country: "zambia"
    },
    {
        first_name: "Tembo",
        last_name: "Henry",
        address: "Kabwata",
        postcode: '10101',
        city: 'lusaka',
        country: "zambia"
    }
])

posts = Post.create!([
    {
        body: "This is a post",
        user: users.first
    },
    {
        body: "This is another post",
        user: users.last
    }
])

comment.create!([
    {
        body: "This is a comment",
        post: posts.first,
        user: users.first
    },
    {
        body: "This is another comment",
        post: posts.first,
        user: users.last
    }
])