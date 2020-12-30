<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = App\User::create([
            'name'=> 'Mostafa Medht',
            'email'=> 'mos@gmail.com',
            'password' => bcrypt('password'),
            'admin' => 1
        ]);


        App\Profile::create([
          'user_id' => $user->id,
          'avatar' => 'uploads/avatars/ava1.png',
          'about' =>  'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Unde soluta doloremque eius magnam sint expedita consequuntur, ad molestias, vero itaque aspernatur dolor voluptatum quo assumenda fugiat quisquam veniam possimus? Eveniet?',
          'facebook' => 'https://www.facebook.com',
          'youtube' => 'https://www.youtube.com',
        ]);
    } 
}
