<?php

namespace App\DataFixtures;

use App\Entity\User;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;
use Faker;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {
        $faker = Faker\Factory::create('fr_FR');

        // create 20 users ! Bam!
        for ($i = 0; $i < 20; $i++) {
            $user = new User();
            $user->setUsername('user '.$i);
            $user->setFirstname($faker->name);
            $user->setLastname($faker->lastName);
            $user->setEmail($faker->email);
            $manager->persist($user);
        }

        $manager->flush();
    }
}
