#!/bin/bash
year=$1
century=$(($year/100))
pseudo_year=$(($century*100))

if [ $year -gt $pseudo_year ]
then
  century=$(($century+1))
  echo $century
else
  echo $century
fi

# The first century spans from the year 1 up to and including the year 100, the second century - from the year 101 up to and including the year 200, etc.
# Task
# Given a year, return the century it is in.
# Examples

# 1705 --> 18
# 1900 --> 19
# 1601 --> 17
# 2000 --> 20
# 2742 --> 28

### FOR TESTING

#def testing(year, exp)
#  it "Testing for #{year}" do
#    expect(run_shell args: [year]).to eq(exp.to_s)
#  end
#end

#describe "Fixed tests" do
#  testing(1705, 18)
#  testing(1900, 19)
#  testing(1601, 17)
#  testing(2000, 20)
#  testing(89, 1)
#end