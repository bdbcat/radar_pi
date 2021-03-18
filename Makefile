

ifdef MAKEDIR: # gmake: false; nmake: unused target
!ifdef MAKEDIR # gmake: not seen; nmake: true

#
# Microsoft nmake.
#

default: all

all:
	cmd /c build.cmd cli

ide:
	call build.cmd ide

!else # and now the other
else

#
# GNU (Posix?) make.
#

all:
	bash ./build.sh cli

ide:
	bash ./build.sh ide

endif    # gmake: close condition; nmake: not seen
!endif : # gmake: unused target; nmake close conditional
