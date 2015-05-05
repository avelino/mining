Open Mining
===========

.. image:: https://raw.githubusercontent.com/mining/frontend/master/assets/image/openmining.io.png
    :alt: OpenMining

.. image:: https://travis-ci.org/avelino/mining.png?branch=master
    :target: https://travis-ci.org/avelino/mining
    :alt: Build Status - Travis CI

Business Intelligence (BI) Application Server written in Python 


Contribute
----------

Join us on IRC at **#openmining** on freenode (`web access <http://webchat.freenode.net/?channels=openmining>`_).


Requirements
------------

* MongoDB (Admin)
* Redis (Queue and DataWarehouse)
* Bower (Install frontend libs, NodeJS depends)


Automated install
-----------

First, you need to install `fig <http://www.fig.sh/install.html>`_ before proceed.

**Then, copy the sample ini file to mining.ini**

.. code:: bash

    $ cp mining/mining.sample.fig.ini mining/mining.ini

Run
---

.. code:: bash

    fig up
    fig run web python manage.py celery 
    fig run web python manage.py scheduler

It will create docker containers, then start downloading and compiling all the depenciences. So the first run can last an hour or two depending on your hardware and internet connection. Be patient and go outside to play with your cat.

Running Demo in automated install
------------

.. code:: bash

    fig run web python manage.py build_demo


And now you can login with: username 'admin' and password 'admin'.

Manual install
-------

Install dependencies
-------

.. code:: bash

    $ sudo apt-get install mongodb-10gen redis-server nodejs nodejs-dev npm
    $ npm install bower


If you use Mac OSX you can install all dependencies using `HomeBrew <http://brew.sh/>`_.

**Then, copy the sample ini file to mining.ini**

.. code:: bash

    $ cp mining/mining.sample.ini mining/mining.ini

Install Open Mining
-------

**Clone the repository**

.. code:: bash

    $ git clone git@github.com:avelino/mining.git
    $ cd mining
    $ git submodule update

**Run make install on project**

.. code:: bash

    $ make environment
    $ make install

**Install javascript assets using Bower**

.. code:: bash

    $ mining/frontend
    $ bower install

**FAQ**

**If mongodb or redis-server problems**

Install mongodb and redis-server, make sure it running

**If "python setup.py install" returns "error: can't copy 'mining/mining.ini': doesn't exist or not a regular file"**

copy mining/mining.sample.ini to mining/mining.ini


Run
---

.. code:: bash

    python manage.py runserver
    python manage.py celery
    python manage.py scheduler


Running Demo in manual install
------------

.. code:: bash

    python manage.py build_demo


And now you can login with: username 'admin' and password 'admin'.

Screenshot
----------

**Dashboard OpenMining**

.. image:: https://raw.github.com/avelino/mining/master/docs/docs/img/dashboard-openmining_new.png
    :alt: Dashboard OpenMining

**Dashboard Charts OpenMining**

.. image:: https://raw.github.com/avelino/mining/master/docs/docs/img/charts-openmining_new.png
    :alt: Dashboard Charts OpenMining

**Dashboard Charts OpenMining**

.. image:: https://raw.github.com/avelino/mining/master/docs/docs/img/charts2-openmining_new.png
    :alt: Dashboard Charts OpenMining

**Dashboard Widgets OpenMining**

.. image:: https://raw.github.com/avelino/mining/master/docs/docs/img/widgets-openmining_new.png
    :alt: Dashboard Widgets OpenMining


**Late Scheduler and running Cubes OpenMining**

.. image:: https://raw.github.com/avelino/mining/master/docs/docs/img/late-scheduler-openmining_new.png
    :alt: Late Scheduler and running Cubes OpenMining


Sponsor
-------

* `UP! Essência <http://www.upessencia.com.br/>`_
* `ZNC <http://www.znc.com.br/>`_
