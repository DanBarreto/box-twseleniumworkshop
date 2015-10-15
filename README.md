# Vagrant box - TW Brazil Selenium Workshop
This box contains:
- Ubuntu 14.04 LTS 64 bits (Desktop edition)
- Java 7 (JDK)
- IntelliJ 14 Community Edition
- Git
- Gradle

## Requirements
- Vagrant
- VirtualBox

..and **patience** :)

## Setup instructions
- Clone this repository
- Run the command `vagrant up` on the root directory
- Wait until the provision script finishes

*P.S.: VirtualBox client opens the virtual machine before the provision script finishes. Please, patiently wait until everything is good to go.*

## Useful commands (inside the virtual machine)
`idea`: opens IntelliJ IDE (but locks the terminal)

`selenium`: goes to the directory that contains the necessary code to ben run on the workshop
