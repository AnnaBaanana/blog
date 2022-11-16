function Post({post}) {
console.log(post)

    return (
        <p>
            <em>{post.post}</em>
            <br />
            <img src={post.image_url} />
        </p>
    )
};

export default Post;