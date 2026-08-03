if (!alvo.invencivel)
{
    alvo.vida -= 1;

    alvo.invencivel = true;
    alvo.tempo_invencivel = 120;
}