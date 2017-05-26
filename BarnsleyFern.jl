
using PyPlot

f1(x) = [0 0; 0 0.16] * x
f2(x) = [0.85 0.04; -0.04 0.85] * x + [0; 1.60]
f3(x) = [0.20 -0.26; 0.23 0.22] * x + [0; 1.60]
f4(x) = [-0.15 0.28; 0.26 0.24] * x + [0; 0.44];

t = 1e6

xpts = []
ypts = []
x = [0; 0]
for i = 1:t
    n = rand()
    if n < 0.01
        x = f1(x)
    elseif n < 0.86
        x = f2(x)
    elseif n < 0.93
        x = f3(x)
    else
        x = f4(x)
    end
    push!(xpts, x[1])
    push!(ypts, x[2])
end

fig = figure("fern",figsize=(10,10))
scatter(xpts, ypts, s=0.1)

# show plot
plt[:show]()

# keep REPL interactive
ion()
