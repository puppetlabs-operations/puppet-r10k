puppet-r10k
===========

Install and manage [r10k][1], the killer robot powered puppet deployment tool

Synopsis
--------

    # Install the r10k gem and your site specific r10k configfile
    class { 'r10k':
      configfile => 'puppet:///modules/service/puppet/master/r10k.yaml',
    }

    # Install a cron job to fully update your environment every 20 minutes.
    include r10k::cron

Requirements
------------

Currently this is only implemented for Debian squeeze. Pull requests gladly accepted!

This also requires the puppetlabs-operations `interval` function

[1]: https://github.com/adrienthebo/r10k
