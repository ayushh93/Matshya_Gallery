<div class="row">
    <div class="col-lg-12">
        <label for="question">Question</label>
        <div class="input-group">
            <input type="text" name="question" id="question" class="form-control"
                value="{{ $faq->question ?? old('question') }}" placeholder="Write Your Question Here!">
        </div>
    </div>
</div>
<br>
<div class="row">
    <div class="col-lg-12">
        <label for="answer">Answer</label>
        <div class="input-group">
            <input type="text" name="answer" id="answer" class="form-control"
            value="{{ $faq->answer ?? old('answer') }}" placeholder="Write Your Answer Here!">
        </div>
    </div>
</div>
<hr>
<x-adminetic-edit-add-button :model="$faq ?? null" name="Faq" />

