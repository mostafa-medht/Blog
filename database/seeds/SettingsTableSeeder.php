<?php

use Illuminate\Database\Seeder;

class SettingsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       \App\Setting::create([
           'site_name' => 'Laravel\'s Blog',
           'address' => 'Egypt, Cairo',
           'contact_number' => '+201140805605',
           'contact_email' => 'mostafamedht98@gmail.com'
       ]);  
    }
}
