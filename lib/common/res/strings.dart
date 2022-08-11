import 'package:intl/intl.dart';

abstract class Strings {
    static String appName() => Intl.message('Help Yourself');
    static final home = HomeScreenStrings();
    static final addEmotion = AddEmotionStrings();
    static final main = MainStrings();
    static final video = VideoScreenStrings();
    static final emotions = EmotionsString();
    static final emotionDescriptions = EmotionDescriptionsString();
    static final videoRecommendations = VideoRecommendationsPageStrings();
}

class EmotionDescriptionsString {
  String gratitude() => Intl.message('Чувство признательности к кому-нибудь за оказанное добро, внимание.');
  String cheerfulness() => Intl.message('Бодрое физическое и душевное состояние.');
  String inspiration() => Intl.message('Состояние наивысшего подъёма душевных сил.');
  String happiness() => Intl.message('Состояние высшей удовлетворённости жизнью, чувство глубокого довольства и радости.');
  String delight() => Intl.message('Необычайно радостное состояние, чувство восхищения.');
  String pride() => Intl.message('Чувство собственного достоинства, самоуважения.');
  String confidence() => Intl.message('Отношение к кому-либо, основанное на убеждённости в его честности, добросовестности.');
  String interest() => Intl.message('Внимание, любопытство, проявляемое к кому-либо, чему-либо.');
  String comfort() => Intl.message('Состояние удовлетворения, внутреннего покоя из-за благоприятно сложившихся обстоятельств.');
  String hope() => Intl.message('Ожидание чего-либо желаемого, благоприятного, соединённое с уверенностью в возможности осуществления.');
  String optimism() => Intl.message('Бодрое и жизнерадостное мироощущение, исполненное веры в будущее; склонность во всём видеть хорошие, светлые стороны.');
  String joy() => Intl.message('Чувство удовольствия, ощущение большого душевного удовлетворения.');
  String satisfaction() => Intl.message('Чувство удовольствия, испытываемое тем, чьи устремления, желания, потребности удовлетворены.');
  String sureness() => Intl.message('Сознание своей силы, своих возможностей; решительность.');
  String energy() => Intl.message('Способность активно, настойчиво действовать, трудиться и т.п.; деятельная сила человека.');
  String enthusiasm() => Intl.message('Сильное воодушевление, душевный подъём, увлечённость чем-либо.');

  String hopelessness() => Intl.message('Не оставляющий надежды на благополучный исход или на улучшение.');
  String anxiety() => Intl.message('Сильное душевное волнение, беспокойство, вызываемое какими-либо опасениями, страхом, неизвестностью.');
  String helplessness() => Intl.message('Состояние, при котором человек лишен возможности самостоятельно и активно создавать для себя условия, обеспечивающие существование и предохраняющие его жизнь и здоровье от опасных внешних воздействий.');
  String anger() => Intl.message('Чувство сильного негодования, возмущения; состояние раздражения, озлобления.');
  String sadness() => Intl.message('Чувство и состояние печали, лёгкого уныния.');
  String discomfort() => Intl.message('Отсутствие комфорта (удобств, психологической стабильности и т.п.).');
  String confusion() => Intl.message('Растерянность, смущение, смятение.');
  String bewilderment() => Intl.message('Состояние, вызванное непониманием, неясностью чего-либо.');
  String unwillingness() => Intl.message('Отсутствие желания, стремления к чему-либо, к осуществлению чего-либо.');
  String nervousness() => Intl.message('Отличающийся повышенной возбудимостью, раздражительный.');
  String impatience() => Intl.message('Недостаток, отсутствие терпения в ожидании кого-либо, чего-либо.');
  String discouragement() => Intl.message('Лишённый уверенности в себе, растерянный.');
  String loneliness() => Intl.message('Состояние одинокого человека.');
  String shock() => Intl.message('Сильное волнение, глубокое переживание.');
  String irritation() => Intl.message('Чувство досады, недовольства, гнева; состояние озлобленности.');
  String disappointment() => Intl.message('Чувство неудовлетворённости по поводу чего-нибудь несбывшегося, неудавшегося, не оправдавшего себя.');
  String embarrassment() => Intl.message('Чувство и состояние замешательства, неловкости, застенчивости.');
}

class EmotionsString {
  String gratitude() => Intl.message('благодарность');
  String cheerfulness() => Intl.message('бодрость');
  String inspiration() => Intl.message('вдохновение');
  String happiness() => Intl.message('счастье');
  String delight() => Intl.message('восторг');
  String pride() => Intl.message('гордость');
  String confidence() => Intl.message('доверие');
  String interest() => Intl.message('интерес');
  String comfort() => Intl.message('комфорт');
  String hope() => Intl.message('надежда');
  String optimism() => Intl.message('оптимизм');
  String joy() => Intl.message('радость');
  String satisfaction() => Intl.message('удовлетворение');
  String sureness() => Intl.message('уверенность');
  String energy() => Intl.message('энергия');
  String enthusiasm() => Intl.message('энтузиазм');

  String hopelessness() => Intl.message('безнадежность');
  String anxiety() => Intl.message('тревога');
  String helplessness() => Intl.message('беспомощность');
  String anger() => Intl.message('гнев');
  String sadness() => Intl.message('грусть');
  String discomfort() => Intl.message('дискомфорт');
  String confusion() => Intl.message('замешательство');
  String bewilderment() => Intl.message('недоумение');
  String unwillingness() => Intl.message('нежелание');
  String nervousness() => Intl.message('нервозность');
  String impatience() => Intl.message('нетерпение');
  String discouragement() => Intl.message('обескураженность');
  String loneliness() => Intl.message('одиночество');
  String shock() => Intl.message('потрясение');
  String irritation() => Intl.message('раздражение');
  String disappointment() => Intl.message('разочарование');
  String embarrassment() => Intl.message('смущение');
}

class MainStrings {
  String diary() => Intl.message('Дневник');
  String videos() => Intl.message('Видео');
  String profile() => Intl.message('Профиль');
}

class AddEmotionStrings {
  String title() => Intl.message('Новое событие');
  String chooseEmotion() => Intl.message('Выберите эмоцию');
  String details() => Intl.message('Детали');
  String search() => Intl.message('Поиск');
  String positive() => Intl.message('Позитивные');
  String negative() => Intl.message('Негативные');
  String nothingFound() => Intl.message('Ничего не найдено :(');
  String next() => Intl.message('Далее');
  String prev() => Intl.message('Назад');
  String save() => Intl.message('Сохранить');
  String name() => Intl.message('Событие');
  String comment() => Intl.message('Детали, переживания...');
  String emptyEmotions() => Intl.message('Выберите хотя бы одну эмоцию.');
  String emptyTitle() => Intl.message('Пожалуйста, введите заголовок.');
}

class HomeScreenStrings {
  String title() => Intl.message('Home');
  String logout() => Intl.message('Logout');
}

class VideoScreenStrings {
  String title() => Intl.message('Видео');
  String videoTitle() => Intl.message('Название');
  String videoChannel() => Intl.message('Автор');

}

class VideoRecommendationsPageStrings {
  String title() => Intl.message('Рекомендации');
  String depression() => Intl.message('Депрессия');
  String anxietyDisorder() => Intl.message('Тревожное\nрасстройство');
  String personalityDisorders() => Intl.message('Расстройства\nличности');
  String nutrition() => Intl.message('Питание');
  String upbringing() => Intl.message('Воспитание\nдетей');
  String insult() => Intl.message('Обиды');
  String neurosis() => Intl.message('Неврозы');
  String communication() => Intl.message('Коммуникация');
  String relations() => Intl.message('Отношения');
  String stressTolerance() => Intl.message('Стрессо\nустойчивость');
  String emotionManagement() => Intl.message('Управление\nэмоциями');
  String borderlinePersonalityDisorder() => Intl.message('Пограничное\nрасстройство');

}

