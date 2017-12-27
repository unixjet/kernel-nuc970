# !/bin/sh

REF_KERNEL=/sdb1/workspace-tmp/nuc970/NUC970_Linux_Kernel
KERNEL=linux-4.4.38

NUC970=arch/arm/mach-nuc970
MACH_INC=$NUC970/include/mach
MACH_SRC=$NUC970

for file in $REF_KERNEL/$MACH_INC/*
do 
  if test -f $file
  then
    bf=`basename $file`
    echo $bf
    quilt add ${KERNEL}/$MACH_INC/$bf
  fi
done

for file in $REF_KERNEL/$MACH_SRC/*
do 
  if test -f $file
  then
     bf=`basename $file`
     echo $bf
    quilt add ${KERNEL}/$MACH_SRC/$bf
  fi
done


