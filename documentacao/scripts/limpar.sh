#!/bin/bash

# Aguarda o Elasticsearch iniciar
echo "Aguardando Elasticsearch iniciar..."
until curl -s -u elastic:elasticpassword http://localhost:9200 > /dev/null; do
  sleep 5
done

# Exclui o usuário kibana_user, se existir
echo "Verificando se o usuário 'kibana_user' existe..."
USER_EXISTS=$(curl -s -u elastic:elasticpassword http://localhost:9200/_security/user/kibana_user)

if echo "$USER_EXISTS" | grep -q '"kibana_user"'; then
  echo "Usuário 'kibana_user' encontrado. Excluindo..."
  curl -X DELETE "http://localhost:9200/_security/user/kibana_user" -u elastic:elasticpassword
else
  echo "Usuário 'kibana_user' não existe. Nada a fazer."
fi

# Exclui a role log_creator, se existir
echo "Verificando se a role 'log_creator' existe..."
ROLE_EXISTS=$(curl -s -u elastic:elasticpassword http://localhost:9200/_security/role/log_creator)

if echo "$ROLE_EXISTS" | grep -q '"log_creator"'; then
  echo "Role 'log_creator' encontrada. Excluindo..."
  curl -X DELETE "http://localhost:9200/_security/role/log_creator" -u elastic:elasticpassword
else
  echo "Role 'log_creator' não existe. Nada a fazer."
fi

echo "Script de remoção finalizado ✅"