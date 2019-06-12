import { LightningElement, api } from 'lwc';

export default class LwcCmp extends LightningElement {
	@api msg = 'No Message passed!';

	userSaysHi() {
		// eslint-disable-next-line no-alert
		alert("Hi, Aura!");
	}
}