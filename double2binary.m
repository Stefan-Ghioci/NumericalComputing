function [s,e,m] = double2binary(x)

if x >= 0
    s = "0";
else
    s = "1";
end

ex = floor(log2(x));

e_d = ex + 1023;
m_d = x / (2^ex) - 1;

e = "";
m = "";

p = 2^10;
while p >= 1
    if e_d >= p
        e_d = e_d - p;
        e = e + "1";
    else
        e = e + "0";
    end
    p = p / 2;
end

p = 1/2;
for i=1:52
    if m_d >= p
        m_d = m_d - p;
        m = m + "1";
    else
        m = m + "0";
    end
    p = p / 2;
end