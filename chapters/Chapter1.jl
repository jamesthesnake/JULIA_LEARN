#holder
# BASICS ==============================================================================================================

versioninfo()

# Make your life easier by keeping everything in a script. Julia scripts typically have a ".jl" suffix. You can
# execute the contents of a script by using include() or require(), where the latter will only execute the script
# once.

# Make everybody else's life easier by including comments in your scripts.
#=
You can also insert longer comments between "#=" and "=#".
...
...
...
...
... done!
=#

# Julia is a fancy calculator (with an absurd number of bells and whistles!).
#
2 + 2
sqrt(9)
2pi
8 / 2
2 \ 8
div(5, 2)
5 % 2

ans                             # Retrieve previous result

# GETTING HELP & INFORMATION ------------------------------------------------------------------------------------------

# Just hit '?' and then type a function name.
apropos("cosine")
