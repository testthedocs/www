.. post:: Sep 09, 2017
   :tags: news, plone
   :author: svx

==============================
Tips For Writing Documentation
==============================

Being busy now for more than month improving the documentation for the `Plone trainings <https://training.plone.org>`_
with lots of *interesting and eye opening moments* it is time for some words of wisdom :)

First, I would like to say thank you for all people who took time to contribute you are **awesome** !

As I said already before, writing documentation is **not uncomplicated**.
Besides the knowledge about the topic you write about, you need to know how to reach your audience (tone of voice),
how to structure and how to write your docs in a appealing way (more on that later).

Think First - Write Later
=========================

What ? Write later ? Crazy ?

Nope, I am not (I mean show me one person who is not).

This is IMHO (In My Humble (Honest) Opinion) **one of the most important points**.

People tent to forget that and have the habit of start writing without a clear plan and structure in mind, which often results in chaotic and unstructured documentation which is hard to read and follow.

Plan and structure your docs carefully:

- Which topics to cover
- Order of the topics
- Background knowledge and information
- Extended information
- Exercises
- Requirements
- Sexy factor (I will cover that later)

Be Clear From The Beginning
===========================

Mention **explicit** in the beginning the audience **and** level you want to address, is the training for **all levels** or is it for **experienced** Plone developer ?

Give a short introduction about the training, let the people know what the training will cover

Do Not Expect Your Level Of Knowledge
=====================================

What would be the point of giving trainings, right ? :)

Do not expect that the audience have the same wisdom you have, do not expect that someone who is following the training about `Plone deployments with Ansible <https://training.plone.org>`_
knows what `ZMI <https://docs.plone.org/adapt-and-extend/config/management-interface.html>`_ stands for.

Provide these information in the docs (by using a glossary) and during the presentation !

Try to think as an attendee ! Hah ! That is different, isn't it ? :)

Bonus Tip
=========

Ask someone else who is not involved to understand your writings !

The Language Thing
==================

Keep in mind that the majority of us is **not native** speaking English.

We learn/learned English as second, third, fourth, language.

Keep that in mind during writing, use common words and also try to avoid stuff like **we're**, using **we are** is better to understand.

Lets Write
==========

In the following some tips for the time we *you* actually write.

Sorry we are not there yet, but almost !

Your Editor Is Your Friend
--------------------------

It is stunning how many people **do not** configure their editors for writing. Why ? **What is wrong with you ?** (No offense).

No one is perfect, everyone makes typos or syntax errors in reST (reStructuredText).

I mean you use ``pep`` or ``flake8`` or both with python, right ? Why not use a spell-checker and a reST linter on your writings ?

Bonus Tip
---------

If you want examples for setting up Vim, Sublime, Atom or Visual Studio get in contact !

Do Not Trust All Linter
-----------------------

Ahe ? You said use linter, now you are saying do not trust them ?

Some linter are somewhat strict, which is OK for writing prose, but hard to follow writing documentation.

Take the results with a grain of salt. :)

Writing
=======

Yes, lets talk about writing !

Headers
-------

Let Me start with some words about headers, by headers I actually mean two things:

- The reST of headers
- The content of the headers

Unify Headers
`````````````

This brings us pretty much back to the beginning of this post, **structure**.

During the process of creating the structure you should thing about the headers and sub-headers.

Also, decide for one structure and use this one through the whole documentation. Please **do not** change your header structure with every document.

.. code-block:: rst

   ==========
   Header One
   ==========

   Header Two
   ==========

   Header Three
   ------------


I will publish more on that in the upcoming style-guide for writing training documentation, soon !

Header Content
``````````````

**Keep is short and two the point** !

A header is not a description ! Think about your headers !

Examples:

**Great**:

.. code-block:: rst

   Solr Query Syntax
   =================


**Not that great**:

.. code-block:: rst

   ``site_actions``
   ++++++++++++++++


The fist one clearly describes something, the second one is less clear.

Clear and 'short headers' are also good for search and for the readability of your docs.

Which brings us to the next point.

Code Blocks
-----------

Code blocks, if right used are awesome, because by using the you improve the readability of your docs a lot.

Let me show you two pictures of the same training documentation one without and one with code blocks:


Use Valid Code Examples
```````````````````````

If you use code blocks, make sure that your examples are actually **valid code** !
Cutting off brackets or maybe parts will lead to **not working** code examples,
which will look bad to the user and also will produce warnings or even build errors of the docs.

Examples
^^^^^^^^

**Not that great**:

.. code-block:: rst

   .. code-block:: json

    "ebs_snapshots" : {
      "aws_key" : "***** AWS KEY FOR SNAPSHOTTING (IAM USER) *****",
      "aws_secret" : "***** AWS SECRET FOR SNAPSHOTTING (IAM USER) *****"}


Will result in **no** code highlighting and build warnings !


**Great**:

.. code-block:: rst

   .. code-block:: json

      {
       "ebs_snapshots" : {
         "aws_key" : "***** AWS KEY FOR SNAPSHOTTING (IAM USER) *****",
         "aws_secret" : "***** AWS SECRET FOR SNAPSHOTTING (IAM USER) *****"}
      }


Is excellent !!

Pep8 And Friends
----------------

Pep8 and friends are super cool and helpful for writing Python, for reST not so much !!

Even worst using "pep8 style" line length will result in bad documentation.

**Why ?**

Glad that you asked, let me explain:

First, like I said by using "pep8 style" and cutting your written words by 79 characters it gets hard to read (review) the docs.

This is not a problem for the created HTML, but it is a **huge** annoyance for reviewing and improving.

Reading the whole sentence gets really hard !

It is really bad for the sexy factor, yes now we are talking about it !

By polluting your docs with unnecessary lines, because of pep8, you make it harder for your self to create user appealing documentation.

Using pep8 makes it harder to translate, since your sentence is cut in a weird way.

Remember, we like one sentence per line, if possible !

Solution
````````

- Aim for docs for around 120 - 130 characters per line.
- One sentence per line, if possible, if not split meaningful

The Sexy Factor
===============

People still underestimate this !

If you one of these, let me tell you, no offense, but **you are wrong !**

If you want that people follow your docs and stay motivated you have to make sure that your docs are not 'only' well written and structured but also that they look somehow appealing !

Bonus Tips
==========

- Short Headers
- Use Pictures
- Check the length of your documents, 600 - 800 lines, for more split in chapter
- Use descriptions for documents and for chapters
- Use active voice
