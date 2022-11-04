# /* ************************************************************************** */
# /*                                                                            */
# /*                                                        :::      ::::::::   */
# /*   ft_stack.hpp                                       :+:      :+:    :+:   */
# /*                                                    +:+ +:+         +:+     */
# /*   By: kmilchev <kmilchev@student.42wolfsburg.de> +#+  +:+       +#+        */
# /*                                                +#+#+#+#+#+   +#+           */
# /*   Created: 2022/11/04 07:20:26 by kmilchev          #+#    #+#             */
# /*   Updated: 2022/11/04 17:46:13 by kmilchev         ###   ########.fr       */
# /*                                                                            */
# /* ************************************************************************** */

NAME = Inception
YAML = ./srcs/docker-compose.yaml

all: $(NAME)

$(NAME):
	docker compose -f $(YAML) up --build

clean:
	docker compose -f $(YAML) down

fclean: clean
	docker system prune -af

re: fclean $(NAME)