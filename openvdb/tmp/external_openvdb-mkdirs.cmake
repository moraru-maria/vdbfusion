# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "C:/Users/clab/Documents/GitHub/vdbfusion/openvdb/src/external_openvdb")
  file(MAKE_DIRECTORY "C:/Users/clab/Documents/GitHub/vdbfusion/openvdb/src/external_openvdb")
endif()
file(MAKE_DIRECTORY
  "C:/Users/clab/Documents/GitHub/vdbfusion/openvdb/src/external_openvdb-build"
  "C:/Users/clab/Documents/GitHub/vdbfusion/openvdb"
  "C:/Users/clab/Documents/GitHub/vdbfusion/openvdb/tmp"
  "C:/Users/clab/Documents/GitHub/vdbfusion/openvdb/src/external_openvdb-stamp"
  "C:/Users/clab/Documents/GitHub/vdbfusion/openvdb/src"
  "C:/Users/clab/Documents/GitHub/vdbfusion/openvdb/src/external_openvdb-stamp"
)

set(configSubDirs Debug;Release;MinSizeRel;RelWithDebInfo)
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/Users/clab/Documents/GitHub/vdbfusion/openvdb/src/external_openvdb-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/Users/clab/Documents/GitHub/vdbfusion/openvdb/src/external_openvdb-stamp${cfgdir}") # cfgdir has leading slash
endif()
