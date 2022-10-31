/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   pipex.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mchampag <mchampag@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/25 15:13:25 by mchampag          #+#    #+#             */
/*   Updated: 2022/10/31 13:17:13 by mchampag         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef PIPEX_H
# define PIPEX_H

# include <fcntl.h>
# include "./libft/libft.h"
# include <stdio.h>
# include <stdlib.h>
# include <string.h>
# include <sys/wait.h>
# include <unistd.h>

/*
** PIPEX FONCTIONS
*/

int		main(int argc, char **argv, char **envp);

/*
** EXECUTE FONCTIONS
*/

void	execute(char *command, char **envp);

/*
** UTILS FONCTIONS
*/

void	free_table(char *str, char **tab);
int		check_error(int return_value, char *message);

#endif
