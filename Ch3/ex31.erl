-module(ex31).
-export([sum/1, sum/2]).

sum(1) -> 1;
sum(N) -> N + sum(N - 1).

%% If N is equal to M then we are at Min. value and should return.
sum(N, M) when N == M -> M;
%% Direct recursive. If M is greater or equal to N terminate abnormally.
sum(N, M) when N =< M -> M + sum(N, M - 1).