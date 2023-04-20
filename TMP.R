# r_0 <- n_0 * (p_0)
# r_1 <- n_1 * (p_1)
# 
# s <- seq(max(ceiling(r_0+a_0-r_1-a_1),0), ceiling(r_0+a_0-1))
# 1-sum(dhyper(s, m=ceiling(r_0+r_1+a_1+a_0-1), n=ceiling(n_1+n_0-r_1-r_0+b_1+b_0-1), k=ceiling(n_1+a_1+b_1-1)))
# 
# s <- seq(max(ceiling(r_0+a_0-r_1-a_1),0), ceiling(r_1+a_1-1))
# sum(dhyper(s, m=ceiling(r_0+r_1+a_1+a_0-1), n=ceiling(n_1+n_0-r_1-r_0+b_1+b_0-1), k=ceiling(n_0+a_0+b_0-1)))
# 
# 
# s <- seq(max(ceiling(r_0+a_0-r_1-a_1),0), ceiling(r_0+a_0-(1-delta_star)))
# 
# 1-sum(dhyper(s, m=ceiling(r_0+r_1+a_1+a_0-1), n=ceiling(n_1+n_0-r_1-r_0+b_1+b_0-1), k=ceiling(n_1+a_1+b_1-1)))




# a_0 <- 2
# b_0 <- 8
# a_1 <- 5
# b_1 <- 5
# p_0 <- 0.2
# p_1 <- 0.5
# n_0 <- n_1 <- 58
# r_0 <- n_0*p_0
# r_1 <- n_1*p_1
# inner_func <- function(x) {
#     (x)^(a_0 - 1) * (1 - x)^(b_0 - 1)
# }
# 
# inner_int <- Vectorize(function(y) {
#     y^(a_1 - 1) * (1 - y)^(b_1 - 1) * integrate(inner_func,
#         0, y)$value
# })
# 
# bap <- integrate(inner_int, 0, 1)$value/(beta(a_1, b_1) * beta(a_0, b_0))
# 
# s <- seq(max(ceiling(a_0-a_1),0), ceiling(a_0-1))
# 1-sum(dhyper(s, m=ceiling(a_1+a_0-1), n=ceiling(b_1+b_0-1), k=ceiling(a_1+b_1-1)))
