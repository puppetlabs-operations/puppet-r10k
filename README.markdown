puppet-r10k
===========

Install and manage [r10k][1], the killer robot powered puppet deployment tool

## Deprecation warning!

This module is deprecated in favor of [@acidprime's][2] module.  We are no longer supporting this module and recommend you switch as soon as possible.

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
[2]: https://github.com/acidprime/r10k
