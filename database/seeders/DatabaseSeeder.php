<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        // User::create([
        //     'name' => 'Eed Suaidi',
        //     'email' => 'eed@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);

        // User::create([
        //     'name' => 'Jennie',
        //     'email' => 'jennie@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);

        User::factory(3)->create();

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ab inventore eveniet cumque labore eum, dolorem voluptatem quas voluptatibus culpa earum laborum.',
        //     'body' => '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ab inventore eveniet cumque labore eum, dolorem voluptatem quas voluptatibus culpa earum laborum. Nisi quam esse explicabo? Veniam tenetur facilis possimus odio provident minus commodi voluptatibus maiores hic deserunt.</p><p>Possimus, necessitatibus eos! Commodi ab vel voluptas veritatis ipsam ea voluptatum, ut tenetur nemo! Natus tempora, beatae optio error delectus, repellat odit nisi rerum facere maxime, odio enim temporibus minus autem! Sit tempora esse dolore repellendus laboriosam reiciendis molestias, iure dolorum id sint nemo incidunt.</p><p>Suscipit unde dolorem, in explicabo modi cumque recusandae consequatur qui reiciendis enim? Quasi ex magni placeat unde numquam maiores ea aliquid recusandae qui tempora error libero molestias earum quidem, nemo at. Alias omnis qui consequatur? Quam facere mollitia vel accusamus cum quia porro fuga? Corporis veniam labore quidem ex delectus saepe! Molestias a quasi ab voluptatem error, accusantium provident odio earum nisi repellat minima id amet numquam possimus.</p>',
        //     'category_id' => '1',
        //     'user_id' => '1'
        // ]);

        // Post::create([
        //     'title' => 'Judul Ke Dua',
        //     'slug' => 'judul-ke-dua',
        //     'excerpt' => 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ab inventore eveniet cumque labore eum, dolorem voluptatem quas voluptatibus culpa earum laborum.',
        //     'body' => '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ab inventore eveniet cumque labore eum, dolorem voluptatem quas voluptatibus culpa earum laborum. Nisi quam esse explicabo? Veniam tenetur facilis possimus odio provident minus commodi voluptatibus maiores hic deserunt.</p><p>Possimus, necessitatibus eos! Commodi ab vel voluptas veritatis ipsam ea voluptatum, ut tenetur nemo! Natus tempora, beatae optio error delectus, repellat odit nisi rerum facere maxime, odio enim temporibus minus autem! Sit tempora esse dolore repellendus laboriosam reiciendis molestias, iure dolorum id sint nemo incidunt.</p><p>Suscipit unde dolorem, in explicabo modi cumque recusandae consequatur qui reiciendis enim? Quasi ex magni placeat unde numquam maiores ea aliquid recusandae qui tempora error libero molestias earum quidem, nemo at. Alias omnis qui consequatur? Quam facere mollitia vel accusamus cum quia porro fuga? Corporis veniam labore quidem ex delectus saepe! Molestias a quasi ab voluptatem error, accusantium provident odio earum nisi repellat minima id amet numquam possimus.</p>',
        //     'category_id' => '1',
        //     'user_id' => '1'
        // ]);

        // Post::create([
        //     'title' => 'Judul Ke Tiga',
        //     'slug' => 'judul-ke-tiga',
        //     'excerpt' => 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ab inventore eveniet cumque labore eum, dolorem voluptatem quas voluptatibus culpa earum laborum.',
        //     'body' => '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ab inventore eveniet cumque labore eum, dolorem voluptatem quas voluptatibus culpa earum laborum. Nisi quam esse explicabo? Veniam tenetur facilis possimus odio provident minus commodi voluptatibus maiores hic deserunt.</p><p>Possimus, necessitatibus eos! Commodi ab vel voluptas veritatis ipsam ea voluptatum, ut tenetur nemo! Natus tempora, beatae optio error delectus, repellat odit nisi rerum facere maxime, odio enim temporibus minus autem! Sit tempora esse dolore repellendus laboriosam reiciendis molestias, iure dolorum id sint nemo incidunt.</p><p>Suscipit unde dolorem, in explicabo modi cumque recusandae consequatur qui reiciendis enim? Quasi ex magni placeat unde numquam maiores ea aliquid recusandae qui tempora error libero molestias earum quidem, nemo at. Alias omnis qui consequatur? Quam facere mollitia vel accusamus cum quia porro fuga? Corporis veniam labore quidem ex delectus saepe! Molestias a quasi ab voluptatem error, accusantium provident odio earum nisi repellat minima id amet numquam possimus.</p>',
        //     'category_id' => '2',
        //     'user_id' => '1'
        // ]);

        // Post::create([
        //     'title' => 'Judul Ke Empat',
        //     'slug' => 'judul-ke-empat',
        //     'excerpt' => 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ab inventore eveniet cumque labore eum, dolorem voluptatem quas voluptatibus culpa earum laborum.',
        //     'body' => '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ab inventore eveniet cumque labore eum, dolorem voluptatem quas voluptatibus culpa earum laborum. Nisi quam esse explicabo? Veniam tenetur facilis possimus odio provident minus commodi voluptatibus maiores hic deserunt.</p><p>Possimus, necessitatibus eos! Commodi ab vel voluptas veritatis ipsam ea voluptatum, ut tenetur nemo! Natus tempora, beatae optio error delectus, repellat odit nisi rerum facere maxime, odio enim temporibus minus autem! Sit tempora esse dolore repellendus laboriosam reiciendis molestias, iure dolorum id sint nemo incidunt.</p><p>Suscipit unde dolorem, in explicabo modi cumque recusandae consequatur qui reiciendis enim? Quasi ex magni placeat unde numquam maiores ea aliquid recusandae qui tempora error libero molestias earum quidem, nemo at. Alias omnis qui consequatur? Quam facere mollitia vel accusamus cum quia porro fuga? Corporis veniam labore quidem ex delectus saepe! Molestias a quasi ab voluptatem error, accusantium provident odio earum nisi repellat minima id amet numquam possimus.</p>',
        //     'category_id' => '2',
        //     'user_id' => '2'
        // ]);

    }
}
