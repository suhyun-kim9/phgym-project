//clock
const clock = document.querySelector(".clock");

function getClock() {
  const date = new Date();
  const years = String(date.getFullYear());
  const months = String(date.getMonth() + 1).padStart(2, "0");
  const days = String(date.getDate()).padStart(2, "0");
  const hours = String(date.getHours()).padStart(2, "0");
  const minutes = String(date.getMinutes()).padStart(2, "0");
  const seconds = String(date.getSeconds()).padStart(2, "0");
  clock.innerText = `${years}-${months}-${days} ${hours}:${minutes}:${seconds}`;
}

getClock();
setInterval(getClock, 1000);

//quotes
const quotes = [
  {
    quote: "우리가 늙어서 운동을 그만두는 것이 아니라, 우리가 운동을 그만두기 때문에 늙는 것이다.",
    author: "- 케너스 쿠퍼 -"
  },
  {
    quote: "독서는 마음을 위한 것이고, 운동은 몸을 위한 것이다.",
    author: "- 조셉 에디슨 -"
  },
  {
    quote: "운동하라. 잘 먹어라. 인내하라. 당신의 몸은 보답할 것이다.",
    author: "- 작자 미상 -"
  },
  {
    quote: "운동은 사람의 몸과 감정과 정신력의 창조적 변화를 위한 약이다.",
    author: "- 캐럴 웰치 -"
  },
  {
    quote: "오늘 당신이 느끼는 고통은 내일 당신이 느낄 힘이 될 것이다.",
    author: "- 작자 미상 -"
  },
  {
    quote: "변명을 늘어 놓는 것은 한 시간에 0칼로리 밖에 소모하지 않는다.",
    author: "- 작자 미상 -"
  },
  {
    quote: "당신의 몸은 해 낼 수 있다. 당신의 마음만 설득하면 된다. ",
    author: "- 작자 미상 -"
  },
  {
    quote: "정확하게 반복하고 허세 없이 운동해라.",
    author: "- 제이 커틀러 -"
  },
  {
    quote: "나를 배부르게 하는 것들이 나를 파괴한다.",
    author: "- 안젤리나 졸리 -"
  },
  {
    quote: "태어나서 한번도 야식을 먹어본 적이 없어요.",
    author: "- 김연아 -"
  },
  {
    quote: "인생은 살이 쪘을 때와 안 쪘을 때로 나뉜다.",
    author: "- 이소라 -"
  },
  {
    quote: "운동이 끝나고 먹는 거까지가 운동이다.",
    author: "- 김종국 -"
  }
];

const quote = document.querySelector(".quote");
const author = document.querySelector(".author");

const todaysQuote = quotes[Math.floor(Math.random() * quotes.length)];

quote.innerText = todaysQuote.quote;
author.innerText = todaysQuote.author;