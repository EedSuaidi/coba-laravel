<?php

namespace App\Models;

class Post
{
    private static $blog_posts = [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => "Eed Suaidi",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Facilis aliquid blanditiis similique suscipit, placeat voluptatem optio unde esse nisi ea qui ut veritatis, expedita eveniet exercitationem repellat? Commodi, distinctio debitis!"
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Eed Suaidi",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Laboriosam quis minima quo error animi fugiat tempore quas voluptatem. Tempora nam repellat odio iste earum, sit est, nemo, facilis ad eligendi voluptatibus eum ducimus rem quae mollitia consequuntur commodi obcaecati eos accusantium! Commodi laborum fugit dolorem nisi eveniet iste aliquam, maxime quaerat, a dolorum ullam illo praesentium itaque tenetur officia? Fuga, quas! Fugiat libero aliquam totam delectus deleniti dolores sed ex? Debitis iusto sequi in ipsa reprehenderit. Maxime odit nihil amet iusto, est maiores? Eius accusamus autem vitae culpa quo accusantium, minus inventore soluta rem, nostrum odit repellendus sed. Voluptatum, laboriosam?"
        ]
    ];

    public static function all()
    {
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts = static::all();
        return $posts->firstWhere('slug', $slug);
    }
}
