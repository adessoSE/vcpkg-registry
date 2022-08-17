vcpkg registry for VEFS
=======================
For general advice on how to release packages with vcpkg registries,
see `this blog entry <https://devblogs.microsoft.com/cppblog/registries-bring-your-own-libraries-to-vcpkg/#5-specify-each-version-of-your-library-in-the-registry>`_.

Release a new version of VEFS
-----------------------------

1. Update the commit hash (and comment) in ``ports/$PORT/portfile.cmake`` to the
   tagged commit hash of the version of VEFS that has been released previously.
2. Update the field ``version-semver`` in ``ports/$PORT/vcpkg.json`` to the
   released version (omit the ``v`` prefix).
3. Update the dependencies in ``ports/$PORT/vcpkg.json`` with the dependencies
   stated in the ``vcpkg.json`` by the to be released vefs library commit. Make
   sure that the two cmake dependencies at the bottom of
   ``ports/$PORT/vcpkg.json`` stay.
4. Commit the changes (most likely in a separate branch for the purpose of
   opening a new merge request) with the commit message
   ``[vefs] Add version @<version>``.
5. Obtain the subtree hash with ``git rev-parse HEAD:ports/$PORT``
6. Add a new entry at the top of ``versions/v-/$PORT.json`` for the new version
   using the sub tree hash obtained in the previous step for the ``git-tree``
   field. The ``version-semver`` does not use the ``v`` prefix.
7. Amend the previous commit with the new changes with ``git commit --amend``.
   Note that the three step process (``commit && rev-parse && commit --amend``)
   is absolutely necessary and cannot be shortened.
8. Push changes.
9. Potentially update ``baseline`` field in ``vckpg-configuration.json`` for
   this repository of ``node-vefs`` to pull the new vefs version into node-vefs.
